(define-public (reward-21269 (recipient principal))
  (ok (as-contract (stx-transfer? u21269 tx-sender recipient))))
