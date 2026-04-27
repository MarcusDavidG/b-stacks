(define-public (tx-20846 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
