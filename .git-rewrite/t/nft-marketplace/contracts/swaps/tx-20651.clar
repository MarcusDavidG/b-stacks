(define-public (tx-20651 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
