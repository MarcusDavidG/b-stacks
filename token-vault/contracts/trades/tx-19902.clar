(define-public (tx-19902 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
