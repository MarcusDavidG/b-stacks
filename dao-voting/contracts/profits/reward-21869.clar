(define-public (reward-21869 (recipient principal))
  (ok (as-contract (stx-transfer? u21869 tx-sender recipient))))
