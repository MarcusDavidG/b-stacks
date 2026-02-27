(define-public (reward-21881 (recipient principal))
  (ok (as-contract (stx-transfer? u21881 tx-sender recipient))))
