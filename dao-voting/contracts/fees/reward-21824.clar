(define-public (reward-21824 (recipient principal))
  (ok (as-contract (stx-transfer? u21824 tx-sender recipient))))
