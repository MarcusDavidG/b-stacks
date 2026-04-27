(define-public (reward-21146 (recipient principal))
  (ok (as-contract (stx-transfer? u21146 tx-sender recipient))))
