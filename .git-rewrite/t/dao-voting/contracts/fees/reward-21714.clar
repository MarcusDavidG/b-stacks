(define-public (reward-21714 (recipient principal))
  (ok (as-contract (stx-transfer? u21714 tx-sender recipient))))
