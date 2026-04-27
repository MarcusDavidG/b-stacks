(define-public (reward-21433 (recipient principal))
  (ok (as-contract (stx-transfer? u21433 tx-sender recipient))))
