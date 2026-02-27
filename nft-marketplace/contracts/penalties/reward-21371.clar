(define-public (reward-21371 (recipient principal))
  (ok (as-contract (stx-transfer? u21371 tx-sender recipient))))
