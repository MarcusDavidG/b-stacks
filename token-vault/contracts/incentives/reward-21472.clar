(define-public (reward-21472 (recipient principal))
  (ok (as-contract (stx-transfer? u21472 tx-sender recipient))))
