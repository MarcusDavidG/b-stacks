(define-public (reward-21468 (recipient principal))
  (ok (as-contract (stx-transfer? u21468 tx-sender recipient))))
