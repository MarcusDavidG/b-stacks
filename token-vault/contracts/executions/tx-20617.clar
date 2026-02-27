(define-public (tx-20617 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
