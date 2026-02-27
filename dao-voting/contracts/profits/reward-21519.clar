(define-public (reward-21519 (recipient principal))
  (ok (as-contract (stx-transfer? u21519 tx-sender recipient))))
