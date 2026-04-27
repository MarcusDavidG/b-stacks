(define-public (tx-20686 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
