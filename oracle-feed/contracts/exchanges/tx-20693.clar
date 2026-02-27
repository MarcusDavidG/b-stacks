(define-public (tx-20693 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
