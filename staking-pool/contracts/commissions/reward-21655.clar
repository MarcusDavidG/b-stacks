(define-public (reward-21655 (recipient principal))
  (ok (as-contract (stx-transfer? u21655 tx-sender recipient))))
