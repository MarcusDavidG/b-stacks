(define-public (reward-21818 (recipient principal))
  (ok (as-contract (stx-transfer? u21818 tx-sender recipient))))
