(define-public (reward-21807 (recipient principal))
  (ok (as-contract (stx-transfer? u21807 tx-sender recipient))))
