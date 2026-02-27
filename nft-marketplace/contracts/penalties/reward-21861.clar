(define-public (reward-21861 (recipient principal))
  (ok (as-contract (stx-transfer? u21861 tx-sender recipient))))
