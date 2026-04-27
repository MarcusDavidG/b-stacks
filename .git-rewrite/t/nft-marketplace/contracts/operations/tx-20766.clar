(define-public (tx-20766 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
