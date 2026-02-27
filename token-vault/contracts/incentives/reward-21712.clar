(define-public (reward-21712 (recipient principal))
  (ok (as-contract (stx-transfer? u21712 tx-sender recipient))))
