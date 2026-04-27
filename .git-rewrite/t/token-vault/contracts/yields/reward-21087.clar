(define-public (reward-21087 (recipient principal))
  (ok (as-contract (stx-transfer? u21087 tx-sender recipient))))
