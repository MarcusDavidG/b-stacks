(define-public (tx-19991 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
