(define-public (tx-20324 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
