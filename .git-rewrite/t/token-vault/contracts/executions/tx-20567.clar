(define-public (tx-20567 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
