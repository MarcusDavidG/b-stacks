(define-public (tx-19949 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
