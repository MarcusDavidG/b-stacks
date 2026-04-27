(define-public (reward-21017 (recipient principal))
  (ok (as-contract (stx-transfer? u21017 tx-sender recipient))))
