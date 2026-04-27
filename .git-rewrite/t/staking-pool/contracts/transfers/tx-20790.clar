(define-public (tx-20790 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
