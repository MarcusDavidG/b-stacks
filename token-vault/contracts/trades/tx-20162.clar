(define-public (tx-20162 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
