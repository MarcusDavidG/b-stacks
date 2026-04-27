(define-public (reward-21729 (recipient principal))
  (ok (as-contract (stx-transfer? u21729 tx-sender recipient))))
