(define-public (tx-20825 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
