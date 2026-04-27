(define-public (reward-21683 (recipient principal))
  (ok (as-contract (stx-transfer? u21683 tx-sender recipient))))
