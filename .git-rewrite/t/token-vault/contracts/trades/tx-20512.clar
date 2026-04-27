(define-public (tx-20512 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
