(define-public (reward-21742 (recipient principal))
  (ok (as-contract (stx-transfer? u21742 tx-sender recipient))))
