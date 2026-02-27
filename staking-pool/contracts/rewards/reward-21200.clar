(define-public (reward-21200 (recipient principal))
  (ok (as-contract (stx-transfer? u21200 tx-sender recipient))))
