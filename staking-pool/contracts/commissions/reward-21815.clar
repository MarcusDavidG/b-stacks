(define-public (reward-21815 (recipient principal))
  (ok (as-contract (stx-transfer? u21815 tx-sender recipient))))
