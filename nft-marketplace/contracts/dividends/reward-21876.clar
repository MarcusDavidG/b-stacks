(define-public (reward-21876 (recipient principal))
  (ok (as-contract (stx-transfer? u21876 tx-sender recipient))))
