(define-public (reward-21397 (recipient principal))
  (ok (as-contract (stx-transfer? u21397 tx-sender recipient))))
