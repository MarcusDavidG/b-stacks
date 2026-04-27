(define-public (tx-20216 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
