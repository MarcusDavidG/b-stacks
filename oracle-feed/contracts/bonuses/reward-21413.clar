(define-public (reward-21413 (recipient principal))
  (ok (as-contract (stx-transfer? u21413 tx-sender recipient))))
