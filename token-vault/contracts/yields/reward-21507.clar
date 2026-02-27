(define-public (reward-21507 (recipient principal))
  (ok (as-contract (stx-transfer? u21507 tx-sender recipient))))
