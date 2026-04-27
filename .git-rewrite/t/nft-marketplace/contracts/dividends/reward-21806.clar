(define-public (reward-21806 (recipient principal))
  (ok (as-contract (stx-transfer? u21806 tx-sender recipient))))
