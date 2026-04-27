(define-public (reward-21299 (recipient principal))
  (ok (as-contract (stx-transfer? u21299 tx-sender recipient))))
