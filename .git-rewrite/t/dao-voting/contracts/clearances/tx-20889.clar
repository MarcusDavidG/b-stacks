(define-public (tx-20889 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
