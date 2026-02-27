(define-public (reward-21443 (recipient principal))
  (ok (as-contract (stx-transfer? u21443 tx-sender recipient))))
