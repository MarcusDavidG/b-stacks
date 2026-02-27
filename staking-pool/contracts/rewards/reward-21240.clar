(define-public (reward-21240 (recipient principal))
  (ok (as-contract (stx-transfer? u21240 tx-sender recipient))))
