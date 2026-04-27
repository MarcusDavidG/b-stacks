(define-public (reward-21368 (recipient principal))
  (ok (as-contract (stx-transfer? u21368 tx-sender recipient))))
