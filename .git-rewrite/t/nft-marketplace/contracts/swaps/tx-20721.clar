(define-public (tx-20721 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
