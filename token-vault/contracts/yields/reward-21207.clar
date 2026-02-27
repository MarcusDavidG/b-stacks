(define-public (reward-21207 (recipient principal))
  (ok (as-contract (stx-transfer? u21207 tx-sender recipient))))
