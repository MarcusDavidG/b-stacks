(define-public (reward-21588 (recipient principal))
  (ok (as-contract (stx-transfer? u21588 tx-sender recipient))))
