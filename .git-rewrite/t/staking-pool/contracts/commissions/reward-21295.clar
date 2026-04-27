(define-public (reward-21295 (recipient principal))
  (ok (as-contract (stx-transfer? u21295 tx-sender recipient))))
