(define-public (reward-20954 (recipient principal))
  (ok (as-contract (stx-transfer? u20954 tx-sender recipient))))
