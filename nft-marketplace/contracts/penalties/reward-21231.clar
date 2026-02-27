(define-public (reward-21231 (recipient principal))
  (ok (as-contract (stx-transfer? u21231 tx-sender recipient))))
