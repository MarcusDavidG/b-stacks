(define-public (reward-21456 (recipient principal))
  (ok (as-contract (stx-transfer? u21456 tx-sender recipient))))
