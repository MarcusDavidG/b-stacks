(define-public (reward-20985 (recipient principal))
  (ok (as-contract (stx-transfer? u20985 tx-sender recipient))))
