(define-public (tx-20803 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
