(define-public (tx-20473 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
