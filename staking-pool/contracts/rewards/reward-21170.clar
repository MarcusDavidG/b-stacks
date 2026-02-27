(define-public (reward-21170 (recipient principal))
  (ok (as-contract (stx-transfer? u21170 tx-sender recipient))))
