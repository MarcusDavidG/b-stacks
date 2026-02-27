(define-public (reward-21125 (recipient principal))
  (ok (as-contract (stx-transfer? u21125 tx-sender recipient))))
