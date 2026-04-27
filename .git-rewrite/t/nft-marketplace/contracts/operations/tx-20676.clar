(define-public (tx-20676 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
