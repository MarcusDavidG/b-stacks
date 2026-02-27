(define-public (reward-21700 (recipient principal))
  (ok (as-contract (stx-transfer? u21700 tx-sender recipient))))
