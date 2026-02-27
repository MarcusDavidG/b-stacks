(define-public (reward-21440 (recipient principal))
  (ok (as-contract (stx-transfer? u21440 tx-sender recipient))))
