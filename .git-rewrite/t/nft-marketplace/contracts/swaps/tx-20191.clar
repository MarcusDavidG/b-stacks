(define-public (tx-20191 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
