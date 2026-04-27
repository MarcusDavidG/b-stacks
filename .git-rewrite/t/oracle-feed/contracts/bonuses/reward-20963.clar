(define-public (reward-20963 (recipient principal))
  (ok (as-contract (stx-transfer? u20963 tx-sender recipient))))
