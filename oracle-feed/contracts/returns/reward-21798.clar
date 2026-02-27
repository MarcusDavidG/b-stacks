(define-public (reward-21798 (recipient principal))
  (ok (as-contract (stx-transfer? u21798 tx-sender recipient))))
