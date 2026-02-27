(define-public (tx-20437 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
