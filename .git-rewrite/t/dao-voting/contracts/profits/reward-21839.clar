(define-public (reward-21839 (recipient principal))
  (ok (as-contract (stx-transfer? u21839 tx-sender recipient))))
