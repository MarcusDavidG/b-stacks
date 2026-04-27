(define-public (tx-20740 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
