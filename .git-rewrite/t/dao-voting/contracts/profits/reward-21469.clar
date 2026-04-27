(define-public (reward-21469 (recipient principal))
  (ok (as-contract (stx-transfer? u21469 tx-sender recipient))))
