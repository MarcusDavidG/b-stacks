(define-public (tx-20036 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
