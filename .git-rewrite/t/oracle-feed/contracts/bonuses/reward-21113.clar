(define-public (reward-21113 (recipient principal))
  (ok (as-contract (stx-transfer? u21113 tx-sender recipient))))
