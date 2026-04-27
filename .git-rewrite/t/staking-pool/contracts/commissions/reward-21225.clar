(define-public (reward-21225 (recipient principal))
  (ok (as-contract (stx-transfer? u21225 tx-sender recipient))))
