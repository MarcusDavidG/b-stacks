(define-public (reward-21258 (recipient principal))
  (ok (as-contract (stx-transfer? u21258 tx-sender recipient))))
