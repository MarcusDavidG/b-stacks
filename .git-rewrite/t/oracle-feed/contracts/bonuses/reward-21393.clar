(define-public (reward-21393 (recipient principal))
  (ok (as-contract (stx-transfer? u21393 tx-sender recipient))))
