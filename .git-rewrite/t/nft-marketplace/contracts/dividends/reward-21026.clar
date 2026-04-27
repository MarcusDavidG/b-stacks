(define-public (reward-21026 (recipient principal))
  (ok (as-contract (stx-transfer? u21026 tx-sender recipient))))
