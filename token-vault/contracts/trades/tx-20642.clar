(define-public (tx-20642 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
