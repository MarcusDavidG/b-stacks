(define-public (tx-20865 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
