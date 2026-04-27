(define-public (reward-21889 (recipient principal))
  (ok (as-contract (stx-transfer? u21889 tx-sender recipient))))
