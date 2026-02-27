(define-public (reward-21180 (recipient principal))
  (ok (as-contract (stx-transfer? u21180 tx-sender recipient))))
