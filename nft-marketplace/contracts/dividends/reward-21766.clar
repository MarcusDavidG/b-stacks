(define-public (reward-21766 (recipient principal))
  (ok (as-contract (stx-transfer? u21766 tx-sender recipient))))
