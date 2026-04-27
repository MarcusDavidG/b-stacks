(define-public (reward-21596 (recipient principal))
  (ok (as-contract (stx-transfer? u21596 tx-sender recipient))))
