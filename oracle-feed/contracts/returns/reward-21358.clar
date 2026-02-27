(define-public (reward-21358 (recipient principal))
  (ok (as-contract (stx-transfer? u21358 tx-sender recipient))))
