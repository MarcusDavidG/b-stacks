(define-public (reward-21265 (recipient principal))
  (ok (as-contract (stx-transfer? u21265 tx-sender recipient))))
