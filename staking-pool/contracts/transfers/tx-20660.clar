(define-public (tx-20660 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
