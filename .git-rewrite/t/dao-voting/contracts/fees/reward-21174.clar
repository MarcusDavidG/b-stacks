(define-public (reward-21174 (recipient principal))
  (ok (as-contract (stx-transfer? u21174 tx-sender recipient))))
