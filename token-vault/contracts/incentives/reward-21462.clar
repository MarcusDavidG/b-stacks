(define-public (reward-21462 (recipient principal))
  (ok (as-contract (stx-transfer? u21462 tx-sender recipient))))
