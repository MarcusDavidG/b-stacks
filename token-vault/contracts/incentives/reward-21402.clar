(define-public (reward-21402 (recipient principal))
  (ok (as-contract (stx-transfer? u21402 tx-sender recipient))))
