(define-public (reward-21754 (recipient principal))
  (ok (as-contract (stx-transfer? u21754 tx-sender recipient))))
