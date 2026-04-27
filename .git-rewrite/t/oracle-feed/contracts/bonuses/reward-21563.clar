(define-public (reward-21563 (recipient principal))
  (ok (as-contract (stx-transfer? u21563 tx-sender recipient))))
