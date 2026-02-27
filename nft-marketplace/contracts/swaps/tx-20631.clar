(define-public (tx-20631 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
