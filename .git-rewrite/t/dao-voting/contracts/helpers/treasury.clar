;; DAO Treasury
(define-data-var treasury-balance uint u0)
(define-public (deposit-treasury (amount uint))
    (begin
        (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))
        (var-set treasury-balance (+ (var-get treasury-balance) amount))
        (ok true)))
