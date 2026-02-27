(define-public (reward-21617 (recipient principal))
  (ok (as-contract (stx-transfer? u21617 tx-sender recipient))))
