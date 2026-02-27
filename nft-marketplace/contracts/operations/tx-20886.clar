(define-public (tx-20886 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
