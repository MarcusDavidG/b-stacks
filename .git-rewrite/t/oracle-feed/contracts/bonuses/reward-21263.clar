(define-public (reward-21263 (recipient principal))
  (ok (as-contract (stx-transfer? u21263 tx-sender recipient))))
