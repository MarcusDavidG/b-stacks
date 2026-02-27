(define-public (reward-21342 (recipient principal))
  (ok (as-contract (stx-transfer? u21342 tx-sender recipient))))
