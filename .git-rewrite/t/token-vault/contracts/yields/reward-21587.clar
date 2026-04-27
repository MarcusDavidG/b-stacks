(define-public (reward-21587 (recipient principal))
  (ok (as-contract (stx-transfer? u21587 tx-sender recipient))))
