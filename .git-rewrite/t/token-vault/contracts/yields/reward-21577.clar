(define-public (reward-21577 (recipient principal))
  (ok (as-contract (stx-transfer? u21577 tx-sender recipient))))
