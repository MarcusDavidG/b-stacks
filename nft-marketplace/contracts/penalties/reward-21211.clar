(define-public (reward-21211 (recipient principal))
  (ok (as-contract (stx-transfer? u21211 tx-sender recipient))))
