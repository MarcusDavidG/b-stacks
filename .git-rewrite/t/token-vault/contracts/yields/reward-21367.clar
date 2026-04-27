(define-public (reward-21367 (recipient principal))
  (ok (as-contract (stx-transfer? u21367 tx-sender recipient))))
