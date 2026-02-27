(define-public (reward-21726 (recipient principal))
  (ok (as-contract (stx-transfer? u21726 tx-sender recipient))))
