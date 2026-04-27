(define-public (reward-21509 (recipient principal))
  (ok (as-contract (stx-transfer? u21509 tx-sender recipient))))
