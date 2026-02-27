(define-public (reward-21124 (recipient principal))
  (ok (as-contract (stx-transfer? u21124 tx-sender recipient))))
