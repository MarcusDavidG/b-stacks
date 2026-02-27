(define-public (reward-21705 (recipient principal))
  (ok (as-contract (stx-transfer? u21705 tx-sender recipient))))
