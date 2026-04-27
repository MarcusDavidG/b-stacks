(define-public (tx-20038 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
