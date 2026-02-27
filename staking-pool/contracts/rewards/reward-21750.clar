(define-public (reward-21750 (recipient principal))
  (ok (as-contract (stx-transfer? u21750 tx-sender recipient))))
