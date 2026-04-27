(define-public (reward-20929 (recipient principal))
  (ok (as-contract (stx-transfer? u20929 tx-sender recipient))))
