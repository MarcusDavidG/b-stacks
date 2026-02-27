(define-public (reward-21010 (recipient principal))
  (ok (as-contract (stx-transfer? u21010 tx-sender recipient))))
