(define-public (reward-21859 (recipient principal))
  (ok (as-contract (stx-transfer? u21859 tx-sender recipient))))
