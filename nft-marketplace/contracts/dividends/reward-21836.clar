(define-public (reward-21836 (recipient principal))
  (ok (as-contract (stx-transfer? u21836 tx-sender recipient))))
