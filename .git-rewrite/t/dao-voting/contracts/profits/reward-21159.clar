(define-public (reward-21159 (recipient principal))
  (ok (as-contract (stx-transfer? u21159 tx-sender recipient))))
