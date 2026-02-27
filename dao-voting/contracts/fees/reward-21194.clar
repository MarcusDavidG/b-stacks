(define-public (reward-21194 (recipient principal))
  (ok (as-contract (stx-transfer? u21194 tx-sender recipient))))
