(define-public (reward-21028 (recipient principal))
  (ok (as-contract (stx-transfer? u21028 tx-sender recipient))))
