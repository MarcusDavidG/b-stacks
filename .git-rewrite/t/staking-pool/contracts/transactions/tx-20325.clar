(define-public (tx-20325 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
