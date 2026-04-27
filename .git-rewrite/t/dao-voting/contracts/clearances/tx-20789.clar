(define-public (tx-20789 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
