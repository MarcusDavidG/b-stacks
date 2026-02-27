(define-public (tx-20898 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
