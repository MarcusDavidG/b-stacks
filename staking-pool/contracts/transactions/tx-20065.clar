(define-public (tx-20065 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
