(define-public (reward-21546 (recipient principal))
  (ok (as-contract (stx-transfer? u21546 tx-sender recipient))))
