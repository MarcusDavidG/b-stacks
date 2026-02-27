(define-public (reward-21847 (recipient principal))
  (ok (as-contract (stx-transfer? u21847 tx-sender recipient))))
