(define-public (reward-21251 (recipient principal))
  (ok (as-contract (stx-transfer? u21251 tx-sender recipient))))
