(define-public (tx-20268 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
