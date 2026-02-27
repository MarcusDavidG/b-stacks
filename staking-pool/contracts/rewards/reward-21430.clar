(define-public (reward-21430 (recipient principal))
  (ok (as-contract (stx-transfer? u21430 tx-sender recipient))))
