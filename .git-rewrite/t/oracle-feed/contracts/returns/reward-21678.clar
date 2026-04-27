(define-public (reward-21678 (recipient principal))
  (ok (as-contract (stx-transfer? u21678 tx-sender recipient))))
