(define-public (reward-21466 (recipient principal))
  (ok (as-contract (stx-transfer? u21466 tx-sender recipient))))
