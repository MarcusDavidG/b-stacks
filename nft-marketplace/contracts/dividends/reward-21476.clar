(define-public (reward-21476 (recipient principal))
  (ok (as-contract (stx-transfer? u21476 tx-sender recipient))))
