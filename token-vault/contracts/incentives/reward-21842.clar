(define-public (reward-21842 (recipient principal))
  (ok (as-contract (stx-transfer? u21842 tx-sender recipient))))
