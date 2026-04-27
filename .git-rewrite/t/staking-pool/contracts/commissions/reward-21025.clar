(define-public (reward-21025 (recipient principal))
  (ok (as-contract (stx-transfer? u21025 tx-sender recipient))))
