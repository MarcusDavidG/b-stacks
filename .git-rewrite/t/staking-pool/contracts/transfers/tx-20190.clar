(define-public (tx-20190 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
