(define-public (reward-21687 (recipient principal))
  (ok (as-contract (stx-transfer? u21687 tx-sender recipient))))
