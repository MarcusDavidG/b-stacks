(define-public (reward-21199 (recipient principal))
  (ok (as-contract (stx-transfer? u21199 tx-sender recipient))))
