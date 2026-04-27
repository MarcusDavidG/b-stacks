(define-public (tx-20826 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
