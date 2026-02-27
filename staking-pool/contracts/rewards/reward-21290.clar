(define-public (reward-21290 (recipient principal))
  (ok (as-contract (stx-transfer? u21290 tx-sender recipient))))
