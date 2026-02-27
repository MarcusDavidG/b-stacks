(define-public (reward-21688 (recipient principal))
  (ok (as-contract (stx-transfer? u21688 tx-sender recipient))))
