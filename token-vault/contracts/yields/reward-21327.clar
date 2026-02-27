(define-public (reward-21327 (recipient principal))
  (ok (as-contract (stx-transfer? u21327 tx-sender recipient))))
