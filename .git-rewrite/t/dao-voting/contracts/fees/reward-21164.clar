(define-public (reward-21164 (recipient principal))
  (ok (as-contract (stx-transfer? u21164 tx-sender recipient))))
