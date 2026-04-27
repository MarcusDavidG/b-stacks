(define-public (reward-20937 (recipient principal))
  (ok (as-contract (stx-transfer? u20937 tx-sender recipient))))
