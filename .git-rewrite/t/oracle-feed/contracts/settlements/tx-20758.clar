(define-public (tx-20758 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
