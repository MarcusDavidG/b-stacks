(define-public (tx-20388 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
