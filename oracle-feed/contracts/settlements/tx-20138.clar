(define-public (tx-20138 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
