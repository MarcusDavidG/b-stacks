;; Escrow for Safe Trading
(define-map escrow-balances principal uint)
(define-public (deposit-escrow (amount uint))
    (begin
        (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))
        (ok (map-set escrow-balances tx-sender amount))))
