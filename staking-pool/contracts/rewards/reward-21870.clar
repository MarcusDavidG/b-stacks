(define-public (reward-21870 (recipient principal))
  (ok (as-contract (stx-transfer? u21870 tx-sender recipient))))
