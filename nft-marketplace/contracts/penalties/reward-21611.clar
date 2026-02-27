(define-public (reward-21611 (recipient principal))
  (ok (as-contract (stx-transfer? u21611 tx-sender recipient))))
