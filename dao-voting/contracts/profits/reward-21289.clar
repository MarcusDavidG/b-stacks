(define-public (reward-21289 (recipient principal))
  (ok (as-contract (stx-transfer? u21289 tx-sender recipient))))
