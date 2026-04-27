(define-public (tx-20678 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
