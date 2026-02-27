(define-public (reward-21283 (recipient principal))
  (ok (as-contract (stx-transfer? u21283 tx-sender recipient))))
