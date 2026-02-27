(define-public (reward-21401 (recipient principal))
  (ok (as-contract (stx-transfer? u21401 tx-sender recipient))))
