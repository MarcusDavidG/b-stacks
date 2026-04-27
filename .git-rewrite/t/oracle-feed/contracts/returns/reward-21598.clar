(define-public (reward-21598 (recipient principal))
  (ok (as-contract (stx-transfer? u21598 tx-sender recipient))))
