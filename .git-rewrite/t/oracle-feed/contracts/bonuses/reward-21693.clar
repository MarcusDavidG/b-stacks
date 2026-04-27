(define-public (reward-21693 (recipient principal))
  (ok (as-contract (stx-transfer? u21693 tx-sender recipient))))
