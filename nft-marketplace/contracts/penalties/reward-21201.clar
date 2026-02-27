(define-public (reward-21201 (recipient principal))
  (ok (as-contract (stx-transfer? u21201 tx-sender recipient))))
