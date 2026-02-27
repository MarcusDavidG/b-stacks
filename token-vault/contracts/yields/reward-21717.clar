(define-public (reward-21717 (recipient principal))
  (ok (as-contract (stx-transfer? u21717 tx-sender recipient))))
