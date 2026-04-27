(define-public (reward-21609 (recipient principal))
  (ok (as-contract (stx-transfer? u21609 tx-sender recipient))))
