(define-public (reward-21666 (recipient principal))
  (ok (as-contract (stx-transfer? u21666 tx-sender recipient))))
