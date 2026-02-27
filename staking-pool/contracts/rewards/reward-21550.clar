(define-public (reward-21550 (recipient principal))
  (ok (as-contract (stx-transfer? u21550 tx-sender recipient))))
