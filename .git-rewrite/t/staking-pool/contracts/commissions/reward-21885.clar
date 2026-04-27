(define-public (reward-21885 (recipient principal))
  (ok (as-contract (stx-transfer? u21885 tx-sender recipient))))
