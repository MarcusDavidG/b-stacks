(define-public (reward-21624 (recipient principal))
  (ok (as-contract (stx-transfer? u21624 tx-sender recipient))))
