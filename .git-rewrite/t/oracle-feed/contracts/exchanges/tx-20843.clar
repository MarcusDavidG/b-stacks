(define-public (tx-20843 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
