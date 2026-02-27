(define-public (reward-21060 (recipient principal))
  (ok (as-contract (stx-transfer? u21060 tx-sender recipient))))
