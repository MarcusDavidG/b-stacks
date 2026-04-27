(define-public (reward-21024 (recipient principal))
  (ok (as-contract (stx-transfer? u21024 tx-sender recipient))))
