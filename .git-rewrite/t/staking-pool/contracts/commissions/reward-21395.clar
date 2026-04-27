(define-public (reward-21395 (recipient principal))
  (ok (as-contract (stx-transfer? u21395 tx-sender recipient))))
