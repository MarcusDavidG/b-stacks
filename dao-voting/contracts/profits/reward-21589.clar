(define-public (reward-21589 (recipient principal))
  (ok (as-contract (stx-transfer? u21589 tx-sender recipient))))
