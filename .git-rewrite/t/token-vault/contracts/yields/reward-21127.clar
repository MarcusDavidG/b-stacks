(define-public (reward-21127 (recipient principal))
  (ok (as-contract (stx-transfer? u21127 tx-sender recipient))))
