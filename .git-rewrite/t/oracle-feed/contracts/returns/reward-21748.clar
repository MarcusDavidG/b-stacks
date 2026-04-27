(define-public (reward-21748 (recipient principal))
  (ok (as-contract (stx-transfer? u21748 tx-sender recipient))))
