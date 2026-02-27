(define-public (tx-19969 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
