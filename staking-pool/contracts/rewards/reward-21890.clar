(define-public (reward-21890 (recipient principal))
  (ok (as-contract (stx-transfer? u21890 tx-sender recipient))))
