(define-public (reward-21855 (recipient principal))
  (ok (as-contract (stx-transfer? u21855 tx-sender recipient))))
