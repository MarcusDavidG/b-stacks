(define-public (reward-21259 (recipient principal))
  (ok (as-contract (stx-transfer? u21259 tx-sender recipient))))
