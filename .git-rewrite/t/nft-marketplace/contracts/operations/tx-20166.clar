(define-public (tx-20166 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
