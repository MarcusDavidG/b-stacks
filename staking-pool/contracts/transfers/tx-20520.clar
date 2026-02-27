(define-public (tx-20520 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
