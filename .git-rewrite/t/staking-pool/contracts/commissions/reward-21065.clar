(define-public (reward-21065 (recipient principal))
  (ok (as-contract (stx-transfer? u21065 tx-sender recipient))))
