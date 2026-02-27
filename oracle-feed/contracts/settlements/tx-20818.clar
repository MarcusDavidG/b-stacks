(define-public (tx-20818 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
