(define-public (reward-21736 (recipient principal))
  (ok (as-contract (stx-transfer? u21736 tx-sender recipient))))
