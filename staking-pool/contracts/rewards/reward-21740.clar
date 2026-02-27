(define-public (reward-21740 (recipient principal))
  (ok (as-contract (stx-transfer? u21740 tx-sender recipient))))
