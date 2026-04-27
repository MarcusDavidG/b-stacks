(define-public (reward-21715 (recipient principal))
  (ok (as-contract (stx-transfer? u21715 tx-sender recipient))))
