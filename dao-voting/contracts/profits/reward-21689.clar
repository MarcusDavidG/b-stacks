(define-public (reward-21689 (recipient principal))
  (ok (as-contract (stx-transfer? u21689 tx-sender recipient))))
