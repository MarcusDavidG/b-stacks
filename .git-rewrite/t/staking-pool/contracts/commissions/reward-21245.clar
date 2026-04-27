(define-public (reward-21245 (recipient principal))
  (ok (as-contract (stx-transfer? u21245 tx-sender recipient))))
