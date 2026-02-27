(define-public (reward-21496 (recipient principal))
  (ok (as-contract (stx-transfer? u21496 tx-sender recipient))))
