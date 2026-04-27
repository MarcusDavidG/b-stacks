(define-public (reward-21487 (recipient principal))
  (ok (as-contract (stx-transfer? u21487 tx-sender recipient))))
