(define-public (reward-21501 (recipient principal))
  (ok (as-contract (stx-transfer? u21501 tx-sender recipient))))
