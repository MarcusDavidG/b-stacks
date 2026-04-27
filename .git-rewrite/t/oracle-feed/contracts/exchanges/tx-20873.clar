(define-public (tx-20873 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
