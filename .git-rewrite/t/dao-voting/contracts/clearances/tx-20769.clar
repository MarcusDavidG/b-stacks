(define-public (tx-20769 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
