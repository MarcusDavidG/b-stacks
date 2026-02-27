(define-public (reward-21464 (recipient principal))
  (ok (as-contract (stx-transfer? u21464 tx-sender recipient))))
