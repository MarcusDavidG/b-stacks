(define-public (reward-21880 (recipient principal))
  (ok (as-contract (stx-transfer? u21880 tx-sender recipient))))
