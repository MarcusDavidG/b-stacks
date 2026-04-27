(define-public (tx-20513 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
