(define-public (reward-21825 (recipient principal))
  (ok (as-contract (stx-transfer? u21825 tx-sender recipient))))
