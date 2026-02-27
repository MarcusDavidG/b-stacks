(define-public (reward-21310 (recipient principal))
  (ok (as-contract (stx-transfer? u21310 tx-sender recipient))))
