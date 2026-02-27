(define-public (reward-21828 (recipient principal))
  (ok (as-contract (stx-transfer? u21828 tx-sender recipient))))
