(define-public (reward-21796 (recipient principal))
  (ok (as-contract (stx-transfer? u21796 tx-sender recipient))))
