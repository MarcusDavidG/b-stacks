(define-public (reward-21778 (recipient principal))
  (ok (as-contract (stx-transfer? u21778 tx-sender recipient))))
