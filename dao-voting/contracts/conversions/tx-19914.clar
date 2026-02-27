(define-public (tx-19914 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
