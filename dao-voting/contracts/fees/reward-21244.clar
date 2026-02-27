(define-public (reward-21244 (recipient principal))
  (ok (as-contract (stx-transfer? u21244 tx-sender recipient))))
