(define-public (reward-21582 (recipient principal))
  (ok (as-contract (stx-transfer? u21582 tx-sender recipient))))
