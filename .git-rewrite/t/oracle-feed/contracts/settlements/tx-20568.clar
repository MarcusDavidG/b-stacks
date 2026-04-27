(define-public (tx-20568 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
