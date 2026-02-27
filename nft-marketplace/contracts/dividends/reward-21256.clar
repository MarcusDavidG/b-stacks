(define-public (reward-21256 (recipient principal))
  (ok (as-contract (stx-transfer? u21256 tx-sender recipient))))
