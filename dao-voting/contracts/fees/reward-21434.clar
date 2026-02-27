(define-public (reward-21434 (recipient principal))
  (ok (as-contract (stx-transfer? u21434 tx-sender recipient))))
