(define-public (reward-21551 (recipient principal))
  (ok (as-contract (stx-transfer? u21551 tx-sender recipient))))
