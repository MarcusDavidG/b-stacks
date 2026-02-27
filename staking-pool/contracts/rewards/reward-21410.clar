(define-public (reward-21410 (recipient principal))
  (ok (as-contract (stx-transfer? u21410 tx-sender recipient))))
