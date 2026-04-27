(define-public (reward-21695 (recipient principal))
  (ok (as-contract (stx-transfer? u21695 tx-sender recipient))))
