(define-public (reward-21432 (recipient principal))
  (ok (as-contract (stx-transfer? u21432 tx-sender recipient))))
