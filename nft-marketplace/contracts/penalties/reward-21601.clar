(define-public (reward-21601 (recipient principal))
  (ok (as-contract (stx-transfer? u21601 tx-sender recipient))))
