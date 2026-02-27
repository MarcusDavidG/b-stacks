(define-public (reward-21449 (recipient principal))
  (ok (as-contract (stx-transfer? u21449 tx-sender recipient))))
