(define-public (tx-20587 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
