(define-public (tx-20715 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
