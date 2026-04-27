(define-public (tx-20071 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
