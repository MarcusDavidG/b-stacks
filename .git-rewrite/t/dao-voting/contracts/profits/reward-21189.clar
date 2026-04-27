(define-public (reward-21189 (recipient principal))
  (ok (as-contract (stx-transfer? u21189 tx-sender recipient))))
