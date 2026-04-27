(define-public (reward-21217 (recipient principal))
  (ok (as-contract (stx-transfer? u21217 tx-sender recipient))))
