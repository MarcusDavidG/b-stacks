(define-public (reward-21419 (recipient principal))
  (ok (as-contract (stx-transfer? u21419 tx-sender recipient))))
