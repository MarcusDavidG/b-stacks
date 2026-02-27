(define-public (reward-21790 (recipient principal))
  (ok (as-contract (stx-transfer? u21790 tx-sender recipient))))
