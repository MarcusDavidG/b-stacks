(define-public (reward-21448 (recipient principal))
  (ok (as-contract (stx-transfer? u21448 tx-sender recipient))))
