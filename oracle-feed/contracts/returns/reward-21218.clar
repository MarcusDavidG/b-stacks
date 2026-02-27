(define-public (reward-21218 (recipient principal))
  (ok (as-contract (stx-transfer? u21218 tx-sender recipient))))
