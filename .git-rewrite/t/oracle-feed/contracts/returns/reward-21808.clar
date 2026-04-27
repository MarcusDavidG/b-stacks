(define-public (reward-21808 (recipient principal))
  (ok (as-contract (stx-transfer? u21808 tx-sender recipient))))
