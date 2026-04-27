(define-public (tx-20852 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
