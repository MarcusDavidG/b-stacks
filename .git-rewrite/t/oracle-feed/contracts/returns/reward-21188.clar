(define-public (reward-21188 (recipient principal))
  (ok (as-contract (stx-transfer? u21188 tx-sender recipient))))
