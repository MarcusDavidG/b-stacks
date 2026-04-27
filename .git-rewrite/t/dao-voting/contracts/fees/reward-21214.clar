(define-public (reward-21214 (recipient principal))
  (ok (as-contract (stx-transfer? u21214 tx-sender recipient))))
