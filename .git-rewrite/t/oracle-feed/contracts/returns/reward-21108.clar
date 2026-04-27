(define-public (reward-21108 (recipient principal))
  (ok (as-contract (stx-transfer? u21108 tx-sender recipient))))
