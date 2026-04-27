(define-public (tx-20772 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
