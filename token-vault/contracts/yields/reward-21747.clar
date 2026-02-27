(define-public (reward-21747 (recipient principal))
  (ok (as-contract (stx-transfer? u21747 tx-sender recipient))))
