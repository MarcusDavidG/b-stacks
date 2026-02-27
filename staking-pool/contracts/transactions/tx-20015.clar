(define-public (tx-20015 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
