(define-public (reward-20950 (recipient principal))
  (ok (as-contract (stx-transfer? u20950 tx-sender recipient))))
