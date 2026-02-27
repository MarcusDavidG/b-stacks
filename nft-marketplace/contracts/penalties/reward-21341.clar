(define-public (reward-21341 (recipient principal))
  (ok (as-contract (stx-transfer? u21341 tx-sender recipient))))
