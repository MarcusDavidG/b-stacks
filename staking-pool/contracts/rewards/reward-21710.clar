(define-public (reward-21710 (recipient principal))
  (ok (as-contract (stx-transfer? u21710 tx-sender recipient))))
