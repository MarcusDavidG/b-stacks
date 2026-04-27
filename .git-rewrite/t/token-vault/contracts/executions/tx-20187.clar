(define-public (tx-20187 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
