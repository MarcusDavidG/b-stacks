(define-public (reward-21193 (recipient principal))
  (ok (as-contract (stx-transfer? u21193 tx-sender recipient))))
