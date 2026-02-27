(define-public (reward-21632 (recipient principal))
  (ok (as-contract (stx-transfer? u21632 tx-sender recipient))))
