(define-public (tx-20087 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
