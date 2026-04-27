(define-public (reward-21716 (recipient principal))
  (ok (as-contract (stx-transfer? u21716 tx-sender recipient))))
