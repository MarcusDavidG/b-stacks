(define-public (reward-20905 (recipient principal))
  (ok (as-contract (stx-transfer? u20905 tx-sender recipient))))
