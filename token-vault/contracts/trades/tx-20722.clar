(define-public (tx-20722 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
