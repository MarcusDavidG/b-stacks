(define-public (reward-21112 (recipient principal))
  (ok (as-contract (stx-transfer? u21112 tx-sender recipient))))
