(define-public (reward-21460 (recipient principal))
  (ok (as-contract (stx-transfer? u21460 tx-sender recipient))))
