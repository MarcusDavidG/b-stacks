(define-public (tx-20814 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
