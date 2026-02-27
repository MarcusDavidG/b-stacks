(define-public (reward-21893 (recipient principal))
  (ok (as-contract (stx-transfer? u21893 tx-sender recipient))))
