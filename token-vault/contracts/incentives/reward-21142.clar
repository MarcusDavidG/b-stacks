(define-public (reward-21142 (recipient principal))
  (ok (as-contract (stx-transfer? u21142 tx-sender recipient))))
