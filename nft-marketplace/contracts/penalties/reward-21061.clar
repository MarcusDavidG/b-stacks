(define-public (reward-21061 (recipient principal))
  (ok (as-contract (stx-transfer? u21061 tx-sender recipient))))
