(define-public (reward-20952 (recipient principal))
  (ok (as-contract (stx-transfer? u20952 tx-sender recipient))))
