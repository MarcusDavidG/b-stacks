(define-public (reward-21158 (recipient principal))
  (ok (as-contract (stx-transfer? u21158 tx-sender recipient))))
