(define-public (reward-21093 (recipient principal))
  (ok (as-contract (stx-transfer? u21093 tx-sender recipient))))
