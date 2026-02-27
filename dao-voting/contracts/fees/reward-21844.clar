(define-public (reward-21844 (recipient principal))
  (ok (as-contract (stx-transfer? u21844 tx-sender recipient))))
