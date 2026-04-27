(define-public (reward-21895 (recipient principal))
  (ok (as-contract (stx-transfer? u21895 tx-sender recipient))))
