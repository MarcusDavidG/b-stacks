(define-public (reward-21610 (recipient principal))
  (ok (as-contract (stx-transfer? u21610 tx-sender recipient))))
