(define-public (reward-21616 (recipient principal))
  (ok (as-contract (stx-transfer? u21616 tx-sender recipient))))
