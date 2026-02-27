(define-public (tx-19982 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
