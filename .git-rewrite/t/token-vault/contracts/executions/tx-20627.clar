(define-public (tx-20627 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
