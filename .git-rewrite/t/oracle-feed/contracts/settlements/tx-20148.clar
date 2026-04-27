(define-public (tx-20148 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
