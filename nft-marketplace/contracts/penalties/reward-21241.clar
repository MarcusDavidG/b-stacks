(define-public (reward-21241 (recipient principal))
  (ok (as-contract (stx-transfer? u21241 tx-sender recipient))))
