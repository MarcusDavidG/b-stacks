(define-public (reward-21578 (recipient principal))
  (ok (as-contract (stx-transfer? u21578 tx-sender recipient))))
