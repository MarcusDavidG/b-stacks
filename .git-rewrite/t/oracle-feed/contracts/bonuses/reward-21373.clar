(define-public (reward-21373 (recipient principal))
  (ok (as-contract (stx-transfer? u21373 tx-sender recipient))))
