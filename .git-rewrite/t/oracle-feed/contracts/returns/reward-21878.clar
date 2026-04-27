(define-public (reward-21878 (recipient principal))
  (ok (as-contract (stx-transfer? u21878 tx-sender recipient))))
