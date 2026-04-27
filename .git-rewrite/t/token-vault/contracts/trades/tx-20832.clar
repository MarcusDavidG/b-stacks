(define-public (tx-20832 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
