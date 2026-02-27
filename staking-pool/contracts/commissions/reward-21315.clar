(define-public (reward-21315 (recipient principal))
  (ok (as-contract (stx-transfer? u21315 tx-sender recipient))))
