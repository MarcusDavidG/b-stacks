(define-public (reward-21819 (recipient principal))
  (ok (as-contract (stx-transfer? u21819 tx-sender recipient))))
