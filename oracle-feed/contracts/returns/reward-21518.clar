(define-public (reward-21518 (recipient principal))
  (ok (as-contract (stx-transfer? u21518 tx-sender recipient))))
