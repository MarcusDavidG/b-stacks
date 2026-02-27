(define-public (reward-21357 (recipient principal))
  (ok (as-contract (stx-transfer? u21357 tx-sender recipient))))
