(define-public (reward-21362 (recipient principal))
  (ok (as-contract (stx-transfer? u21362 tx-sender recipient))))
