(define-public (tx-19986 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
