(define-public (tx-20679 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
