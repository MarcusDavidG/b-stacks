(define-public (tx-20847 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
