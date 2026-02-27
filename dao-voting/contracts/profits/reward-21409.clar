(define-public (reward-21409 (recipient principal))
  (ok (as-contract (stx-transfer? u21409 tx-sender recipient))))
