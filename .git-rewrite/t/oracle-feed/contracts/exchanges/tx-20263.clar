(define-public (tx-20263 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
