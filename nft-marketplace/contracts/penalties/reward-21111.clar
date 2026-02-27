(define-public (reward-21111 (recipient principal))
  (ok (as-contract (stx-transfer? u21111 tx-sender recipient))))
