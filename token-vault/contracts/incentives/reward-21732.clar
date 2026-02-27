(define-public (reward-21732 (recipient principal))
  (ok (as-contract (stx-transfer? u21732 tx-sender recipient))))
