(define-public (reward-21865 (recipient principal))
  (ok (as-contract (stx-transfer? u21865 tx-sender recipient))))
