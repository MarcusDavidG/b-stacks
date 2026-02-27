(define-public (reward-21151 (recipient principal))
  (ok (as-contract (stx-transfer? u21151 tx-sender recipient))))
