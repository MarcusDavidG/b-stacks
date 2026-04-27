(define-public (reward-21888 (recipient principal))
  (ok (as-contract (stx-transfer? u21888 tx-sender recipient))))
