(define-public (reward-21005 (recipient principal))
  (ok (as-contract (stx-transfer? u21005 tx-sender recipient))))
