(define-public (reward-21334 (recipient principal))
  (ok (as-contract (stx-transfer? u21334 tx-sender recipient))))
