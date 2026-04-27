(define-public (tx-20753 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
