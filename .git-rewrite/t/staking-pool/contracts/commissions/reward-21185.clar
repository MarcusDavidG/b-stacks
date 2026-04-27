(define-public (reward-21185 (recipient principal))
  (ok (as-contract (stx-transfer? u21185 tx-sender recipient))))
