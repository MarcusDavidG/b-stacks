(define-public (tx-20657 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
