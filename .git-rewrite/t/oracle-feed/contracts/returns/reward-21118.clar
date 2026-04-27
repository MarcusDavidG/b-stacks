(define-public (reward-21118 (recipient principal))
  (ok (as-contract (stx-transfer? u21118 tx-sender recipient))))
