(define-public (tx-20796 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
