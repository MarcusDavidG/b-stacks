(define-public (tx-20761 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
