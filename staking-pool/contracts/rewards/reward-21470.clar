(define-public (reward-21470 (recipient principal))
  (ok (as-contract (stx-transfer? u21470 tx-sender recipient))))
