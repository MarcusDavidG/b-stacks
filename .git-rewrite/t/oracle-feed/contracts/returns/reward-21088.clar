(define-public (reward-21088 (recipient principal))
  (ok (as-contract (stx-transfer? u21088 tx-sender recipient))))
