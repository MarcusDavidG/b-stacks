(define-public (tx-20535 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
