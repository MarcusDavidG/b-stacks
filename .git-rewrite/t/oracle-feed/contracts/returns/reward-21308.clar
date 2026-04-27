(define-public (reward-21308 (recipient principal))
  (ok (as-contract (stx-transfer? u21308 tx-sender recipient))))
