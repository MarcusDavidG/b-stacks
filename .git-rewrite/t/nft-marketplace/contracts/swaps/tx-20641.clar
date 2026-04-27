(define-public (tx-20641 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
