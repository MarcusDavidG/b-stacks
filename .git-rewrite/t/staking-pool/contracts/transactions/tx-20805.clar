(define-public (tx-20805 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
