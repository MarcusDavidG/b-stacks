(define-public (reward-21572 (recipient principal))
  (ok (as-contract (stx-transfer? u21572 tx-sender recipient))))
