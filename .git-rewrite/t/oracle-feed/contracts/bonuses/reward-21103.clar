(define-public (reward-21103 (recipient principal))
  (ok (as-contract (stx-transfer? u21103 tx-sender recipient))))
