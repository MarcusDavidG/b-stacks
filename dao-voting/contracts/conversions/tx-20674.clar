(define-public (tx-20674 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
