(define-public (reward-21059 (recipient principal))
  (ok (as-contract (stx-transfer? u21059 tx-sender recipient))))
