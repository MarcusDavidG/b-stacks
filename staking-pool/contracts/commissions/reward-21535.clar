(define-public (reward-21535 (recipient principal))
  (ok (as-contract (stx-transfer? u21535 tx-sender recipient))))
