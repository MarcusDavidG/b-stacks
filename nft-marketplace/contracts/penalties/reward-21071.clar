(define-public (reward-21071 (recipient principal))
  (ok (as-contract (stx-transfer? u21071 tx-sender recipient))))
