(define-public (reward-21284 (recipient principal))
  (ok (as-contract (stx-transfer? u21284 tx-sender recipient))))
