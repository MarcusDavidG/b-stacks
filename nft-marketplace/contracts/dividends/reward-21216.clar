(define-public (reward-21216 (recipient principal))
  (ok (as-contract (stx-transfer? u21216 tx-sender recipient))))
