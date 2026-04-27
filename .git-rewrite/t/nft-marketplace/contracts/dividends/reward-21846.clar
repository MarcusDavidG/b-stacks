(define-public (reward-21846 (recipient principal))
  (ok (as-contract (stx-transfer? u21846 tx-sender recipient))))
