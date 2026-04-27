(define-public (reward-21534 (recipient principal))
  (ok (as-contract (stx-transfer? u21534 tx-sender recipient))))
