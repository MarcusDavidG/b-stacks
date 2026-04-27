(define-public (tx-20725 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
