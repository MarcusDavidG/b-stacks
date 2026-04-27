(define-public (reward-21739 (recipient principal))
  (ok (as-contract (stx-transfer? u21739 tx-sender recipient))))
