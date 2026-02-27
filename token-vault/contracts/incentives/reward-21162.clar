(define-public (reward-21162 (recipient principal))
  (ok (as-contract (stx-transfer? u21162 tx-sender recipient))))
