(define-public (tx-20075 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
