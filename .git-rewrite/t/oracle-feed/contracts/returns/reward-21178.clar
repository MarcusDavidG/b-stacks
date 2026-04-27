(define-public (reward-21178 (recipient principal))
  (ok (as-contract (stx-transfer? u21178 tx-sender recipient))))
