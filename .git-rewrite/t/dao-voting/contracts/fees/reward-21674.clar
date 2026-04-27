(define-public (reward-21674 (recipient principal))
  (ok (as-contract (stx-transfer? u21674 tx-sender recipient))))
