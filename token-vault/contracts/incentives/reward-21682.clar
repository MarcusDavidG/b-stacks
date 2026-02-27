(define-public (reward-21682 (recipient principal))
  (ok (as-contract (stx-transfer? u21682 tx-sender recipient))))
