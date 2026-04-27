(define-public (reward-20955 (recipient principal))
  (ok (as-contract (stx-transfer? u20955 tx-sender recipient))))
