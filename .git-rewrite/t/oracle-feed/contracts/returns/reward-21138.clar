(define-public (reward-21138 (recipient principal))
  (ok (as-contract (stx-transfer? u21138 tx-sender recipient))))
