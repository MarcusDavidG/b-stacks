(define-public (tx-20545 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
