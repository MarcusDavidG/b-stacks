(define-public (reward-21102 (recipient principal))
  (ok (as-contract (stx-transfer? u21102 tx-sender recipient))))
