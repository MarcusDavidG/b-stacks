(define-public (reward-20949 (recipient principal))
  (ok (as-contract (stx-transfer? u20949 tx-sender recipient))))
