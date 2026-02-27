(define-public (reward-21220 (recipient principal))
  (ok (as-contract (stx-transfer? u21220 tx-sender recipient))))
