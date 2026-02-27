(define-public (reward-21302 (recipient principal))
  (ok (as-contract (stx-transfer? u21302 tx-sender recipient))))
