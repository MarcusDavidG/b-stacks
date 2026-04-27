(define-public (reward-21583 (recipient principal))
  (ok (as-contract (stx-transfer? u21583 tx-sender recipient))))
