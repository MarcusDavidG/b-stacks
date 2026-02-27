(define-public (reward-21169 (recipient principal))
  (ok (as-contract (stx-transfer? u21169 tx-sender recipient))))
