(define-public (tx-20666 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
