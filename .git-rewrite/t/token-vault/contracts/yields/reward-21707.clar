(define-public (reward-21707 (recipient principal))
  (ok (as-contract (stx-transfer? u21707 tx-sender recipient))))
