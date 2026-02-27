(define-public (tx-20575 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
