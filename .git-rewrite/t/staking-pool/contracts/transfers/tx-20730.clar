(define-public (tx-20730 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
