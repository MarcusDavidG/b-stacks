(define-public (reward-21435 (recipient principal))
  (ok (as-contract (stx-transfer? u21435 tx-sender recipient))))
