(define-public (tx-20353 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
