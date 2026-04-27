(define-public (tx-20258 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
