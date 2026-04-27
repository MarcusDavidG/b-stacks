(define-public (tx-20145 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
