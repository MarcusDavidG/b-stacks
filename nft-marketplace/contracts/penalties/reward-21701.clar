(define-public (reward-21701 (recipient principal))
  (ok (as-contract (stx-transfer? u21701 tx-sender recipient))))
