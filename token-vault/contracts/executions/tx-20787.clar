(define-public (tx-20787 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
