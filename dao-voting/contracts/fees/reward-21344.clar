(define-public (reward-21344 (recipient principal))
  (ok (as-contract (stx-transfer? u21344 tx-sender recipient))))
