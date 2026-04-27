(define-public (reward-20904 (recipient principal))
  (ok (as-contract (stx-transfer? u20904 tx-sender recipient))))
