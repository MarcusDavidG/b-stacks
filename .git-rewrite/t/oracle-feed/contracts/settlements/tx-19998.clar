(define-public (tx-19998 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
