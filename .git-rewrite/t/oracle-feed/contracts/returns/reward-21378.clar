(define-public (reward-21378 (recipient principal))
  (ok (as-contract (stx-transfer? u21378 tx-sender recipient))))
