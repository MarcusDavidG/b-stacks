(define-public (reward-21812 (recipient principal))
  (ok (as-contract (stx-transfer? u21812 tx-sender recipient))))
