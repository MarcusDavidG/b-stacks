(define-public (reward-21586 (recipient principal))
  (ok (as-contract (stx-transfer? u21586 tx-sender recipient))))
