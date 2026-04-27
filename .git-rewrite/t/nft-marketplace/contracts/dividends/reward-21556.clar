(define-public (reward-21556 (recipient principal))
  (ok (as-contract (stx-transfer? u21556 tx-sender recipient))))
