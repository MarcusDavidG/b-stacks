(define-public (tx-20741 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
