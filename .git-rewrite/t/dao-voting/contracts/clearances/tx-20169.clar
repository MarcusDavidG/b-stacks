(define-public (tx-20169 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
