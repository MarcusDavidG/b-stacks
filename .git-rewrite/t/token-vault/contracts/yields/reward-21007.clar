(define-public (reward-21007 (recipient principal))
  (ok (as-contract (stx-transfer? u21007 tx-sender recipient))))
