(define-public (reward-21675 (recipient principal))
  (ok (as-contract (stx-transfer? u21675 tx-sender recipient))))
