(define-public (reward-21649 (recipient principal))
  (ok (as-contract (stx-transfer? u21649 tx-sender recipient))))
