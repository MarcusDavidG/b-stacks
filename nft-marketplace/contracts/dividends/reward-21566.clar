(define-public (reward-21566 (recipient principal))
  (ok (as-contract (stx-transfer? u21566 tx-sender recipient))))
