(define-public (reward-21062 (recipient principal))
  (ok (as-contract (stx-transfer? u21062 tx-sender recipient))))
