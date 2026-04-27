(define-public (reward-21698 (recipient principal))
  (ok (as-contract (stx-transfer? u21698 tx-sender recipient))))
