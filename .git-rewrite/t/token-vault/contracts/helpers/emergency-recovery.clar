;; Emergency Recovery System for Token Vault
;; Social recovery and dead man's switch functionality

;; Constants
(define-constant ERR-NOT-GUARDIAN (err u300))
(define-constant ERR-RECOVERY-ACTIVE (err u301))
(define-constant ERR-INSUFFICIENT-GUARDIANS (err u302))

;; Data Variables
(define-data-var recovery-delay uint u1008) ;; 1 week in blocks

;; Data Maps
(define-map vault-guardians {vault-id: uint} {
    guardians: (list 5 principal),
    required-confirmations: uint,
    recovery-active: bool,
    recovery-initiated: uint
})

(define-map recovery-requests {vault-id: uint, new-owner: principal} {
    confirmations: (list 5 principal),
    confirmation-count: uint,
    expires-at: uint
})

(define-map dead-mans-switch {vault-id: uint} {
    last-activity: uint,
    timeout-period: uint,
    beneficiary: principal,
    active: bool
})

;; Initiate social recovery
(define-public (initiate-recovery (vault-id uint) (new-owner principal))
    (let ((guardians-data (unwrap! (map-get? vault-guardians {vault-id: vault-id}) (err ERR-NOT-GUARDIAN))))
        (asserts! (is-some (index-of (get guardians guardians-data) tx-sender)) (err ERR-NOT-GUARDIAN))
        (map-set recovery-requests {vault-id: vault-id, new-owner: new-owner} {
            confirmations: (list tx-sender),
            confirmation-count: u1,
            expires-at: (+ block-height u1008)
        })
        (ok true)))

;; Confirm recovery request
(define-public (confirm-recovery (vault-id uint) (new-owner principal))
    (let ((request-data (unwrap! (map-get? recovery-requests {vault-id: vault-id, new-owner: new-owner}) (err ERR-NOT-GUARDIAN)))
          (guardians-data (unwrap! (map-get? vault-guardians {vault-id: vault-id}) (err ERR-NOT-GUARDIAN))))
        (asserts! (is-some (index-of (get guardians guardians-data) tx-sender)) (err ERR-NOT-GUARDIAN))
        (asserts! (is-none (index-of (get confirmations request-data) tx-sender)) (err ERR-RECOVERY_ACTIVE))
        (let ((new-confirmations (unwrap! (as-max-len? (append (get confirmations request-data) tx-sender) u5) (err ERR-INSUFFICIENT-GUARDIANS)))
              (new-count (+ (get confirmation-count request-data) u1)))
            (map-set recovery-requests {vault-id: vault-id, new-owner: new-owner} {
                confirmations: new-confirmations,
                confirmation-count: new-count,
                expires-at: (get expires-at request-data)
            })
            (ok new-count))))
