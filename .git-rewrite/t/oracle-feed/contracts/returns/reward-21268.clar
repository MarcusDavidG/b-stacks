(define-public (reward-21268 (recipient principal))
  (ok (as-contract (stx-transfer? u21268 tx-sender recipient))))
