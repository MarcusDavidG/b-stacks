(define-public (reward-21731 (recipient principal))
  (ok (as-contract (stx-transfer? u21731 tx-sender recipient))))
