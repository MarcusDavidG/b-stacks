(define-public (reward-21506 (recipient principal))
  (ok (as-contract (stx-transfer? u21506 tx-sender recipient))))
