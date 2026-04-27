(define-public (tx-20776 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
