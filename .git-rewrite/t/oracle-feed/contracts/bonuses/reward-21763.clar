(define-public (reward-21763 (recipient principal))
  (ok (as-contract (stx-transfer? u21763 tx-sender recipient))))
