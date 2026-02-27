(define-public (reward-21092 (recipient principal))
  (ok (as-contract (stx-transfer? u21092 tx-sender recipient))))
