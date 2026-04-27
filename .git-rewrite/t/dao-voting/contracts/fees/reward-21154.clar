(define-public (reward-21154 (recipient principal))
  (ok (as-contract (stx-transfer? u21154 tx-sender recipient))))
