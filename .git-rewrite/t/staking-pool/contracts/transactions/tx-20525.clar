(define-public (tx-20525 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
