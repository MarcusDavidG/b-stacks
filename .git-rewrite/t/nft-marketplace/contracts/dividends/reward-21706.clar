(define-public (reward-21706 (recipient principal))
  (ok (as-contract (stx-transfer? u21706 tx-sender recipient))))
