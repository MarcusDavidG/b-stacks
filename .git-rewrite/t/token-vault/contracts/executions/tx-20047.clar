(define-public (tx-20047 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
