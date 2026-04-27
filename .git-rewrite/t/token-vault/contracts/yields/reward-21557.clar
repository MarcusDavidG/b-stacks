(define-public (reward-21557 (recipient principal))
  (ok (as-contract (stx-transfer? u21557 tx-sender recipient))))
