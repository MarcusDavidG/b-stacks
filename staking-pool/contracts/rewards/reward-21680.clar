(define-public (reward-21680 (recipient principal))
  (ok (as-contract (stx-transfer? u21680 tx-sender recipient))))
