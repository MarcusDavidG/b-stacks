(define-public (reward-21145 (recipient principal))
  (ok (as-contract (stx-transfer? u21145 tx-sender recipient))))
