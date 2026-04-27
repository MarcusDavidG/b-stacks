(define-public (tx-20664 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
