(define-public (reward-21074 (recipient principal))
  (ok (as-contract (stx-transfer? u21074 tx-sender recipient))))
