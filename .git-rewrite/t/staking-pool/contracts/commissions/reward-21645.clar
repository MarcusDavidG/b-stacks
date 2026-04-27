(define-public (reward-21645 (recipient principal))
  (ok (as-contract (stx-transfer? u21645 tx-sender recipient))))
