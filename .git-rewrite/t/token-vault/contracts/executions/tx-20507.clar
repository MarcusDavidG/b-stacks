(define-public (tx-20507 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
