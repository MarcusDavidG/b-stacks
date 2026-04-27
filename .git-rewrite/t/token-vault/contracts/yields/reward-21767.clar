(define-public (reward-21767 (recipient principal))
  (ok (as-contract (stx-transfer? u21767 tx-sender recipient))))
