(define-public (reward-21287 (recipient principal))
  (ok (as-contract (stx-transfer? u21287 tx-sender recipient))))
