(define-public (reward-21600 (recipient principal))
  (ok (as-contract (stx-transfer? u21600 tx-sender recipient))))
