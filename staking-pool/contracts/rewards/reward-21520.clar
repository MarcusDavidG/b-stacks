(define-public (reward-21520 (recipient principal))
  (ok (as-contract (stx-transfer? u21520 tx-sender recipient))))
