(define-public (reward-21444 (recipient principal))
  (ok (as-contract (stx-transfer? u21444 tx-sender recipient))))
