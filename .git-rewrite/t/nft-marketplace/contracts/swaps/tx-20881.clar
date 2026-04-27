(define-public (tx-20881 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
