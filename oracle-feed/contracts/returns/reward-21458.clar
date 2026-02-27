(define-public (reward-21458 (recipient principal))
  (ok (as-contract (stx-transfer? u21458 tx-sender recipient))))
