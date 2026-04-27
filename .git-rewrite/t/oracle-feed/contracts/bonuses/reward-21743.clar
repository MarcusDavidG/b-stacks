(define-public (reward-21743 (recipient principal))
  (ok (as-contract (stx-transfer? u21743 tx-sender recipient))))
