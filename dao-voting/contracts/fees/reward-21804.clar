(define-public (reward-21804 (recipient principal))
  (ok (as-contract (stx-transfer? u21804 tx-sender recipient))))
