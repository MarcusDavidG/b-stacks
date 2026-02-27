(define-public (tx-20438 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
