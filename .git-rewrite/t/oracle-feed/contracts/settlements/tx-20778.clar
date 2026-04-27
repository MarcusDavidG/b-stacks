(define-public (tx-20778 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
