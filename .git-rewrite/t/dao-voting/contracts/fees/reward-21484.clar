(define-public (reward-21484 (recipient principal))
  (ok (as-contract (stx-transfer? u21484 tx-sender recipient))))
