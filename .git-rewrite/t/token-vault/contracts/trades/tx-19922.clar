(define-public (tx-19922 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
