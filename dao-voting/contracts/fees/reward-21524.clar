(define-public (reward-21524 (recipient principal))
  (ok (as-contract (stx-transfer? u21524 tx-sender recipient))))
