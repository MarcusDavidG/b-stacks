(define-public (reward-21067 (recipient principal))
  (ok (as-contract (stx-transfer? u21067 tx-sender recipient))))
