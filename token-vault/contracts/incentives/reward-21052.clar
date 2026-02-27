(define-public (reward-21052 (recipient principal))
  (ok (as-contract (stx-transfer? u21052 tx-sender recipient))))
