(define-public (reward-20926 (recipient principal))
  (ok (as-contract (stx-transfer? u20926 tx-sender recipient))))
