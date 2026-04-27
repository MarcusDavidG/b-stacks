(define-public (tx-20164 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
