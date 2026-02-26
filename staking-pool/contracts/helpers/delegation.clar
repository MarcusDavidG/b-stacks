;; Delegation System
(define-map delegations {delegator: principal, validator: principal} uint)
(define-public (delegate (validator principal) (amount uint))
    (ok (map-set delegations {delegator: tx-sender, validator: validator} amount)))
