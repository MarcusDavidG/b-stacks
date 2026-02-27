(define-public (reward-21672 (recipient principal))
  (ok (as-contract (stx-transfer? u21672 tx-sender recipient))))
