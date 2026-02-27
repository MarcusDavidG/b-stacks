(define-public (reward-21851 (recipient principal))
  (ok (as-contract (stx-transfer? u21851 tx-sender recipient))))
