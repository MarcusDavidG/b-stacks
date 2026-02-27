(define-public (reward-21831 (recipient principal))
  (ok (as-contract (stx-transfer? u21831 tx-sender recipient))))
