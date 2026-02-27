(define-public (tx-20415 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
