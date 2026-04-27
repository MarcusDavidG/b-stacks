(define-public (reward-21488 (recipient principal))
  (ok (as-contract (stx-transfer? u21488 tx-sender recipient))))
