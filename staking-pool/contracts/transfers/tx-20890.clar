(define-public (tx-20890 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
