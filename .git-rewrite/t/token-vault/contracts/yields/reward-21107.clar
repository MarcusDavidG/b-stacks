(define-public (reward-21107 (recipient principal))
  (ok (as-contract (stx-transfer? u21107 tx-sender recipient))))
