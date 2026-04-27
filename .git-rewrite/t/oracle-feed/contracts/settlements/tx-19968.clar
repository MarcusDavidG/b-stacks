(define-public (tx-19968 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
