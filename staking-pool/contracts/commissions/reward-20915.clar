(define-public (reward-20915 (recipient principal))
  (ok (as-contract (stx-transfer? u20915 tx-sender recipient))))
