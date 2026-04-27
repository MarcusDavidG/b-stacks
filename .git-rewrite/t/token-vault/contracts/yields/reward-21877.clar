(define-public (reward-21877 (recipient principal))
  (ok (as-contract (stx-transfer? u21877 tx-sender recipient))))
