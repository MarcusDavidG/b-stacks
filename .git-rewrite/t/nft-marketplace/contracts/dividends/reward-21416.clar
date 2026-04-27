(define-public (reward-21416 (recipient principal))
  (ok (as-contract (stx-transfer? u21416 tx-sender recipient))))
