(define-public (reward-21875 (recipient principal))
  (ok (as-contract (stx-transfer? u21875 tx-sender recipient))))
