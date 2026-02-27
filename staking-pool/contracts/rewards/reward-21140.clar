(define-public (reward-21140 (recipient principal))
  (ok (as-contract (stx-transfer? u21140 tx-sender recipient))))
