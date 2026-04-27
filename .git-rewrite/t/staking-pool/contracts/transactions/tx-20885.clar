(define-public (tx-20885 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
