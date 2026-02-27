(define-public (tx-20393 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
