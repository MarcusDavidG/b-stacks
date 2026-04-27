(define-public (tx-19907 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
