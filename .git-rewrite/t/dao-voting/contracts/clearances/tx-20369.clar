(define-public (tx-20369 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
