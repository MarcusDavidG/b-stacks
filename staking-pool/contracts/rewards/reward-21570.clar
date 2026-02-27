(define-public (reward-21570 (recipient principal))
  (ok (as-contract (stx-transfer? u21570 tx-sender recipient))))
