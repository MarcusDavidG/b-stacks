(define-public (reward-21482 (recipient principal))
  (ok (as-contract (stx-transfer? u21482 tx-sender recipient))))
