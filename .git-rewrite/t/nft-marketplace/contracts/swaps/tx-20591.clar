(define-public (tx-20591 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
