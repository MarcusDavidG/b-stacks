(define-public (reward-21656 (recipient principal))
  (ok (as-contract (stx-transfer? u21656 tx-sender recipient))))
