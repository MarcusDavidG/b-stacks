(define-public (reward-21789 (recipient principal))
  (ok (as-contract (stx-transfer? u21789 tx-sender recipient))))
