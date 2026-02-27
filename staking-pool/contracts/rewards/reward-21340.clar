(define-public (reward-21340 (recipient principal))
  (ok (as-contract (stx-transfer? u21340 tx-sender recipient))))
