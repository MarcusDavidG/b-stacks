(define-public (reward-21843 (recipient principal))
  (ok (as-contract (stx-transfer? u21843 tx-sender recipient))))
