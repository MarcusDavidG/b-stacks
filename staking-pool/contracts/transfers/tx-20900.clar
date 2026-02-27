(define-public (tx-20900 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
