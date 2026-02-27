(define-public (reward-21054 (recipient principal))
  (ok (as-contract (stx-transfer? u21054 tx-sender recipient))))
