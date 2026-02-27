(define-public (tx-20892 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
