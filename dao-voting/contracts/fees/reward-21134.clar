(define-public (reward-21134 (recipient principal))
  (ok (as-contract (stx-transfer? u21134 tx-sender recipient))))
