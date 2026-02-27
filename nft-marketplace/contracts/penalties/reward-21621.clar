(define-public (reward-21621 (recipient principal))
  (ok (as-contract (stx-transfer? u21621 tx-sender recipient))))
