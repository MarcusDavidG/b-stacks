(define-public (reward-21222 (recipient principal))
  (ok (as-contract (stx-transfer? u21222 tx-sender recipient))))
