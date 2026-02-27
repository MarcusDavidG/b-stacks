(define-public (reward-20921 (recipient principal))
  (ok (as-contract (stx-transfer? u20921 tx-sender recipient))))
