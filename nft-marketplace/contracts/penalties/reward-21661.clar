(define-public (reward-21661 (recipient principal))
  (ok (as-contract (stx-transfer? u21661 tx-sender recipient))))
