(define-public (reward-21031 (recipient principal))
  (ok (as-contract (stx-transfer? u21031 tx-sender recipient))))
