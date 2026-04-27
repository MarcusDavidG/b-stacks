(define-public (tx-20620 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
