(define-public (reward-21896 (recipient principal))
  (ok (as-contract (stx-transfer? u21896 tx-sender recipient))))
