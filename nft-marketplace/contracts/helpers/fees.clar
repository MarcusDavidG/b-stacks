;; Fee Management
(define-data-var platform-fee uint u250)
(define-public (set-platform-fee (new-fee uint))
    (begin (var-set platform-fee new-fee) (ok true)))
(define-read-only (calculate-fee (amount uint))
    (/ (* amount (var-get platform-fee)) u10000))
