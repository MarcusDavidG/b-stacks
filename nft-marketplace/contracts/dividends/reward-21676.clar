(define-public (reward-21676 (recipient principal))
  (ok (as-contract (stx-transfer? u21676 tx-sender recipient))))
