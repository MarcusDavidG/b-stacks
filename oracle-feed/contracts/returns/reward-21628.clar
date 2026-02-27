(define-public (reward-21628 (recipient principal))
  (ok (as-contract (stx-transfer? u21628 tx-sender recipient))))
