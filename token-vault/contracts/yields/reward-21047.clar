(define-public (reward-21047 (recipient principal))
  (ok (as-contract (stx-transfer? u21047 tx-sender recipient))))
