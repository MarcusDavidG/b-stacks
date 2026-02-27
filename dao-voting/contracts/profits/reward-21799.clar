(define-public (reward-21799 (recipient principal))
  (ok (as-contract (stx-transfer? u21799 tx-sender recipient))))
