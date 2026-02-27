(define-public (reward-21653 (recipient principal))
  (ok (as-contract (stx-transfer? u21653 tx-sender recipient))))
