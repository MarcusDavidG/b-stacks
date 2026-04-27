(define-public (tx-20466 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
