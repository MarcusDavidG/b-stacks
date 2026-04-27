(define-public (reward-21418 (recipient principal))
  (ok (as-contract (stx-transfer? u21418 tx-sender recipient))))
