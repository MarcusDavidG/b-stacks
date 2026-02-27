(define-public (reward-21386 (recipient principal))
  (ok (as-contract (stx-transfer? u21386 tx-sender recipient))))
