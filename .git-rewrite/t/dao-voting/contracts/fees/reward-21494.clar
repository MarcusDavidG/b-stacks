(define-public (reward-21494 (recipient principal))
  (ok (as-contract (stx-transfer? u21494 tx-sender recipient))))
