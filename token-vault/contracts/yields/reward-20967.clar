(define-public (reward-20967 (recipient principal))
  (ok (as-contract (stx-transfer? u20967 tx-sender recipient))))
