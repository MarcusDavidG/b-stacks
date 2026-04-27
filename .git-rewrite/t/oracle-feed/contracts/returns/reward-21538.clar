(define-public (reward-21538 (recipient principal))
  (ok (as-contract (stx-transfer? u21538 tx-sender recipient))))
