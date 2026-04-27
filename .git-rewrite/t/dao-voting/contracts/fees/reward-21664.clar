(define-public (reward-21664 (recipient principal))
  (ok (as-contract (stx-transfer? u21664 tx-sender recipient))))
