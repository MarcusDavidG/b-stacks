(define-public (tx-20350 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
