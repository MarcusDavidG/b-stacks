;; Vault Insurance System
;; Provides coverage for vault assets against various risks

;; Constants
(define-constant ERR-INSUFFICIENT-PREMIUM (err u600))
(define-constant ERR-CLAIM-NOT-VALID (err u601))
(define-constant ERR-POLICY-EXPIRED (err u602))

;; Data Maps
(define-map insurance-policies {vault-id: uint} {
    coverage-amount: uint,
    premium-paid: uint,
    policy-start: uint,
    policy-end: uint,
    coverage-type: (string-ascii 50),
    active: bool
})

(define-map insurance-claims {vault-id: uint, claim-id: uint} {
    claimant: principal,
    claim-amount: uint,
    claim-type: (string-ascii 50),
    submitted-at: uint,
    status: (string-ascii 20),
    evidence-hash: (buff 32)
})

(define-map risk-assessments {vault-id: uint} {
    risk-score: uint,
    premium-rate: uint,
    last-assessment: uint,
    factors: (list 5 (string-ascii 30))
})

;; Purchase insurance for vault
(define-public (purchase-insurance (vault-id uint) (coverage-amount uint) (coverage-type (string-ascii 50)) (duration uint))
    (let ((risk-data (unwrap! (map-get? risk-assessments {vault-id: vault-id}) (err ERR-NOT-FOUND)))
          (premium-cost (calculate-premium coverage-amount (get premium-rate risk-data) duration)))
        ;; Premium payment logic would go here
        (map-set insurance-policies {vault-id: vault-id} {
            coverage-amount: coverage-amount,
            premium-paid: premium-cost,
            policy-start: block-height,
            policy-end: (+ block-height duration),
            coverage-type: coverage-type,
            active: true
        })
        (ok premium-cost)))

;; Submit insurance claim
(define-public (submit-claim (vault-id uint) (claim-amount uint) (claim-type (string-ascii 50)) (evidence-hash (buff 32)))
    (let ((policy (unwrap! (map-get? insurance-policies {vault-id: vault-id}) (err ERR-NOT-FOUND)))
          (claim-id (get-next-claim-id vault-id)))
        (asserts! (get active policy) (err ERR-POLICY-EXPIRED))
        (asserts! (<= claim-amount (get coverage-amount policy)) (err ERR-CLAIM-NOT-VALID))
        (map-set insurance-claims {vault-id: vault-id, claim-id: claim-id} {
            claimant: tx-sender,
            claim-amount: claim-amount,
            claim-type: claim-type,
            submitted-at: block-height,
            status: "pending",
            evidence-hash: evidence-hash
        })
        (ok claim-id)))

;; Calculate insurance premium
(define-read-only (calculate-premium (coverage-amount uint) (premium-rate uint) (duration uint))
    (/ (* (* coverage-amount premium-rate) duration) u10000))

;; Mock function for claim ID generation
(define-read-only (get-next-claim-id (vault-id uint))
    u1)
