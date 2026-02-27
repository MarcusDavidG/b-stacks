(define-public (reward-21042 (recipient principal))
  (ok (as-contract (stx-transfer? u21042 tx-sender recipient))))
