(define-public (reward-21291 (recipient principal))
  (ok (as-contract (stx-transfer? u21291 tx-sender recipient))))
