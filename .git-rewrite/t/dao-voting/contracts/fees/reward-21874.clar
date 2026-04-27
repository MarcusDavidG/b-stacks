(define-public (reward-21874 (recipient principal))
  (ok (as-contract (stx-transfer? u21874 tx-sender recipient))))
