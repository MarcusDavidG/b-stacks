(define-public (reward-21168 (recipient principal))
  (ok (as-contract (stx-transfer? u21168 tx-sender recipient))))
