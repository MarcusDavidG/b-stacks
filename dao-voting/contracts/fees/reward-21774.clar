(define-public (reward-21774 (recipient principal))
  (ok (as-contract (stx-transfer? u21774 tx-sender recipient))))
