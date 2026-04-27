(define-public (tx-20688 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
