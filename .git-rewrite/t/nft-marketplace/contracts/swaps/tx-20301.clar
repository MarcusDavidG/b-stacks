(define-public (tx-20301 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
