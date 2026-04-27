(define-public (reward-21817 (recipient principal))
  (ok (as-contract (stx-transfer? u21817 tx-sender recipient))))
