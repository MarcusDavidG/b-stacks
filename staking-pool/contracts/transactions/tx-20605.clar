(define-public (tx-20605 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
