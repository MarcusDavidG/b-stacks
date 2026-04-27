(define-public (tx-20066 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
