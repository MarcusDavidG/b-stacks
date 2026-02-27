(define-public (tx-20384 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
