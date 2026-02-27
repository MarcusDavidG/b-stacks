(define-public (reward-21175 (recipient principal))
  (ok (as-contract (stx-transfer? u21175 tx-sender recipient))))
