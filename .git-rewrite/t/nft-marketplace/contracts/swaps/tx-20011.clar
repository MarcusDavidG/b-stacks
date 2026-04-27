(define-public (tx-20011 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
