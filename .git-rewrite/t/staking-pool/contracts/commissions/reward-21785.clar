(define-public (reward-21785 (recipient principal))
  (ok (as-contract (stx-transfer? u21785 tx-sender recipient))))
