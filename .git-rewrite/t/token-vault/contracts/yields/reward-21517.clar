(define-public (reward-21517 (recipient principal))
  (ok (as-contract (stx-transfer? u21517 tx-sender recipient))))
