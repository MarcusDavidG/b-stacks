(define-public (reward-21826 (recipient principal))
  (ok (as-contract (stx-transfer? u21826 tx-sender recipient))))
