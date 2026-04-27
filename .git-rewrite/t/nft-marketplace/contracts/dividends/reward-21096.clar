(define-public (reward-21096 (recipient principal))
  (ok (as-contract (stx-transfer? u21096 tx-sender recipient))))
