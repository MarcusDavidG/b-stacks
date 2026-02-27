(define-public (tx-20770 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
