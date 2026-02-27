(define-public (reward-21512 (recipient principal))
  (ok (as-contract (stx-transfer? u21512 tx-sender recipient))))
