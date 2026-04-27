(define-public (reward-21857 (recipient principal))
  (ok (as-contract (stx-transfer? u21857 tx-sender recipient))))
