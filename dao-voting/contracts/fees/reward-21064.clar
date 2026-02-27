(define-public (reward-21064 (recipient principal))
  (ok (as-contract (stx-transfer? u21064 tx-sender recipient))))
