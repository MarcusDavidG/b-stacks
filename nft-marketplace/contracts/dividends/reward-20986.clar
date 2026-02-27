(define-public (reward-20986 (recipient principal))
  (ok (as-contract (stx-transfer? u20986 tx-sender recipient))))
