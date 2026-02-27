(define-public (reward-21382 (recipient principal))
  (ok (as-contract (stx-transfer? u21382 tx-sender recipient))))
