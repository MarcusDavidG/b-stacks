(define-public (reward-21420 (recipient principal))
  (ok (as-contract (stx-transfer? u21420 tx-sender recipient))))
