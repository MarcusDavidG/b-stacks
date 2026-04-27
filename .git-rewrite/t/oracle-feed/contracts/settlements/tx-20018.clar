(define-public (tx-20018 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
