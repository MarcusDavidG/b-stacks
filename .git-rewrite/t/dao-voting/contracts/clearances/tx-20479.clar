(define-public (tx-20479 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
