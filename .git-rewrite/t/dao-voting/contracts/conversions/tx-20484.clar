(define-public (tx-20484 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
