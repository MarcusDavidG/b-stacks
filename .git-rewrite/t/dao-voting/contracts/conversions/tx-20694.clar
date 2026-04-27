(define-public (tx-20694 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
