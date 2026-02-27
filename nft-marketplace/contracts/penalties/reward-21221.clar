(define-public (reward-21221 (recipient principal))
  (ok (as-contract (stx-transfer? u21221 tx-sender recipient))))
