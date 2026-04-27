(define-public (reward-21879 (recipient principal))
  (ok (as-contract (stx-transfer? u21879 tx-sender recipient))))
