(define-public (reward-21768 (recipient principal))
  (ok (as-contract (stx-transfer? u21768 tx-sender recipient))))
