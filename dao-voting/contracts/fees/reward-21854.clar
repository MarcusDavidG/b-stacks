(define-public (reward-21854 (recipient principal))
  (ok (as-contract (stx-transfer? u21854 tx-sender recipient))))
