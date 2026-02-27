(define-public (reward-20947 (recipient principal))
  (ok (as-contract (stx-transfer? u20947 tx-sender recipient))))
