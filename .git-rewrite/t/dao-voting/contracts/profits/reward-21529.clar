(define-public (reward-21529 (recipient principal))
  (ok (as-contract (stx-transfer? u21529 tx-sender recipient))))
