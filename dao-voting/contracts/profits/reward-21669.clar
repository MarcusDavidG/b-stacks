(define-public (reward-21669 (recipient principal))
  (ok (as-contract (stx-transfer? u21669 tx-sender recipient))))
