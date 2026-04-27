(define-public (reward-21423 (recipient principal))
  (ok (as-contract (stx-transfer? u21423 tx-sender recipient))))
