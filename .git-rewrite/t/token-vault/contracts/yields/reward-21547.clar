(define-public (reward-21547 (recipient principal))
  (ok (as-contract (stx-transfer? u21547 tx-sender recipient))))
