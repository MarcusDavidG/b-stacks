(define-public (reward-21455 (recipient principal))
  (ok (as-contract (stx-transfer? u21455 tx-sender recipient))))
