(define-public (reward-21886 (recipient principal))
  (ok (as-contract (stx-transfer? u21886 tx-sender recipient))))
