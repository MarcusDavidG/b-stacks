;; Slashing Mechanism
(define-constant SLASH-PERCENTAGE u10)
(define-public (slash-validator (amount uint))
    (ok (/ (* amount SLASH-PERCENTAGE) u100)))
