(define-public (tx-19983 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
