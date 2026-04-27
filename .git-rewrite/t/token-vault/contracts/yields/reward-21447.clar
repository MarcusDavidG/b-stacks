(define-public (reward-21447 (recipient principal))
  (ok (as-contract (stx-transfer? u21447 tx-sender recipient))))
