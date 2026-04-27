(define-public (tx-20871 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
