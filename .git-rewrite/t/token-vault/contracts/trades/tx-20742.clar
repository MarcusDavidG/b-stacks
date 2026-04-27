(define-public (tx-20742 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
