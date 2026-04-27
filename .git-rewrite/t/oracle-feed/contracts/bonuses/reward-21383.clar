(define-public (reward-21383 (recipient principal))
  (ok (as-contract (stx-transfer? u21383 tx-sender recipient))))
