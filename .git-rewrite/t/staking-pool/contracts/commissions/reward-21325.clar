(define-public (reward-21325 (recipient principal))
  (ok (as-contract (stx-transfer? u21325 tx-sender recipient))))
