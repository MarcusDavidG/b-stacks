(define-public (reward-21143 (recipient principal))
  (ok (as-contract (stx-transfer? u21143 tx-sender recipient))))
