(define-public (reward-21777 (recipient principal))
  (ok (as-contract (stx-transfer? u21777 tx-sender recipient))))
