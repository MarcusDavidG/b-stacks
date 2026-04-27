(define-public (reward-21665 (recipient principal))
  (ok (as-contract (stx-transfer? u21665 tx-sender recipient))))
