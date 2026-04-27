(define-public (reward-21477 (recipient principal))
  (ok (as-contract (stx-transfer? u21477 tx-sender recipient))))
