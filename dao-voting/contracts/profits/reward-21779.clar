(define-public (reward-21779 (recipient principal))
  (ok (as-contract (stx-transfer? u21779 tx-sender recipient))))
