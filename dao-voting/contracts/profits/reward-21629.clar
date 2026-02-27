(define-public (reward-21629 (recipient principal))
  (ok (as-contract (stx-transfer? u21629 tx-sender recipient))))
