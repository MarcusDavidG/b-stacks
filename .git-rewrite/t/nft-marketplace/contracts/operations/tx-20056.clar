(define-public (tx-20056 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
