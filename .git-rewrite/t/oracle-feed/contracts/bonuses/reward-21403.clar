(define-public (reward-21403 (recipient principal))
  (ok (as-contract (stx-transfer? u21403 tx-sender recipient))))
