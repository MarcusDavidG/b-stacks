(define-public (reward-20974 (recipient principal))
  (ok (as-contract (stx-transfer? u20974 tx-sender recipient))))
