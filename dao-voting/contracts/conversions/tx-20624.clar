(define-public (tx-20624 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
