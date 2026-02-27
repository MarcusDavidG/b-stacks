(define-public (tx-20891 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
