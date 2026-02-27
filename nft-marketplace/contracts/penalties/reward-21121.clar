(define-public (reward-21121 (recipient principal))
  (ok (as-contract (stx-transfer? u21121 tx-sender recipient))))
