(define-public (tx-20345 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
