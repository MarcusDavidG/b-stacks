(define-public (tx-20099 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
