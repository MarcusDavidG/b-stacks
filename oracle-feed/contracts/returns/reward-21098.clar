(define-public (reward-21098 (recipient principal))
  (ok (as-contract (stx-transfer? u21098 tx-sender recipient))))
