(define-public (tx-20719 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
