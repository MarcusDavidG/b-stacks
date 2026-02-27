(define-public (reward-21692 (recipient principal))
  (ok (as-contract (stx-transfer? u21692 tx-sender recipient))))
