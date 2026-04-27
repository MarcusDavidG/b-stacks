(define-public (reward-21006 (recipient principal))
  (ok (as-contract (stx-transfer? u21006 tx-sender recipient))))
