(define-public (tx-20897 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
