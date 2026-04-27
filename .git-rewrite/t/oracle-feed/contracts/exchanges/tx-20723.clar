(define-public (tx-20723 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
