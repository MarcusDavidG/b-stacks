(define-public (tx-20836 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
