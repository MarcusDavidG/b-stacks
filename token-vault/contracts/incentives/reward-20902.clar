(define-public (reward-20902 (recipient principal))
  (ok (as-contract (stx-transfer? u20902 tx-sender recipient))))
