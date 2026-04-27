(define-public (tx-20059 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
