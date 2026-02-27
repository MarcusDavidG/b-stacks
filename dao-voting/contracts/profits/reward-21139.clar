(define-public (reward-21139 (recipient principal))
  (ok (as-contract (stx-transfer? u21139 tx-sender recipient))))
