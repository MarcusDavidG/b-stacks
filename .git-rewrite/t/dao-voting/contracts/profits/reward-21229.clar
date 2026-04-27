(define-public (reward-21229 (recipient principal))
  (ok (as-contract (stx-transfer? u21229 tx-sender recipient))))
