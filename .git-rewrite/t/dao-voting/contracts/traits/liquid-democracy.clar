;; Liquid Democracy System
;; Allows voters to delegate their voting power or vote directly

;; Constants
(define-constant ERR-CIRCULAR-DELEGATION (err u800))
(define-constant ERR-DELEGATION-DEPTH (err u801))
(define-constant MAX-DELEGATION-DEPTH u5)

;; Data Maps
(define-map liquid-delegations principal {
    delegate: (optional principal),
    delegation-weight: uint,
    delegation-depth: uint,
    active: bool
})

(define-map delegation-chains principal (list 10 principal))
(define-map effective-voting-power {proposal-id: uint, voter: principal} uint)

;; Set liquid delegation
(define-public (set-liquid-delegation (delegate principal))
    (begin
        (asserts! (not (is-eq delegate tx-sender)) (err ERR-CIRCULAR-DELEGATION))
        (asserts! (not (creates-circular-delegation tx-sender delegate)) (err ERR-CIRCULAR-DELEGATION))
        (let ((delegation-depth (calculate-delegation-depth delegate)))
            (asserts! (<= delegation-depth MAX-DELEGATION-DEPTH) (err ERR-DELEGATION-DEPTH))
            (map-set liquid-delegations tx-sender {
                delegate: (some delegate),
                delegation-weight: (get-token-balance tx-sender),
                delegation-depth: delegation-depth,
                active: true
            })
            (update-delegation-chain tx-sender delegate)
            (ok true))))

;; Remove delegation (vote directly)
(define-public (remove-delegation)
    (map-set liquid-delegations tx-sender {
        delegate: none,
        delegation-weight: u0,
        delegation-depth: u0,
        active: false
    })
    (ok true))

;; Check if delegation creates circular reference
(define-read-only (creates-circular-delegation (delegator principal) (delegate principal))
    (check-delegation-chain delegate delegator u0))

;; Recursively check delegation chain for cycles
(define-read-only (check-delegation-chain (current principal) (target principal) (depth uint))
    (if (> depth MAX-DELEGATION-DEPTH)
        true ;; Assume circular if too deep
        (if (is-eq current target)
            true ;; Found cycle
            (match (get delegate (map-get? liquid-delegations current))
                next-delegate (check-delegation-chain next-delegate target (+ depth u1))
                false)))) ;; No more delegation

;; Calculate delegation depth
(define-read-only (calculate-delegation-depth (delegate principal))
    (calculate-depth-recursive delegate u0))

(define-read-only (calculate-depth-recursive (current principal) (depth uint))
    (if (> depth MAX-DELEGATION-DEPTH)
        depth
        (match (get delegate (map-get? liquid-delegations current))
            next-delegate (calculate-depth-recursive next-delegate (+ depth u1))
            depth)))

;; Update delegation chain for tracking
(define-private (update-delegation-chain (delegator principal) (delegate principal))
    (let ((chain (build-delegation-chain delegate)))
        (map-set delegation-chains delegator chain)
        (ok true)))

;; Build delegation chain list
(define-read-only (build-delegation-chain (start principal))
    (list start))

;; Mock token balance function
(define-read-only (get-token-balance (voter principal))
    u1000)
