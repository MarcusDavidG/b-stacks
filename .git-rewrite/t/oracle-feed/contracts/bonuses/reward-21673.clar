(define-public (reward-21673 (recipient principal))
  (ok (as-contract (stx-transfer? u21673 tx-sender recipient))))
