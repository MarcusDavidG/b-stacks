(define-public (reward-21797 (recipient principal))
  (ok (as-contract (stx-transfer? u21797 tx-sender recipient))))
