(define-public (reward-21760 (recipient principal))
  (ok (as-contract (stx-transfer? u21760 tx-sender recipient))))
