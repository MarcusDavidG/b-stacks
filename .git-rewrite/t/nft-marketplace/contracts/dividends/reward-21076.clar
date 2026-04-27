(define-public (reward-21076 (recipient principal))
  (ok (as-contract (stx-transfer? u21076 tx-sender recipient))))
