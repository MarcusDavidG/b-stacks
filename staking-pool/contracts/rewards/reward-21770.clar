(define-public (reward-21770 (recipient principal))
  (ok (as-contract (stx-transfer? u21770 tx-sender recipient))))
