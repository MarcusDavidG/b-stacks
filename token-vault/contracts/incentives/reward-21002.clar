(define-public (reward-21002 (recipient principal))
  (ok (as-contract (stx-transfer? u21002 tx-sender recipient))))
