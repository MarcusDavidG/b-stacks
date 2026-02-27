(define-public (reward-21030 (recipient principal))
  (ok (as-contract (stx-transfer? u21030 tx-sender recipient))))
