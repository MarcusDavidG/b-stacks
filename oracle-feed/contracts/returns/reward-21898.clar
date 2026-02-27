(define-public (reward-21898 (recipient principal))
  (ok (as-contract (stx-transfer? u21898 tx-sender recipient))))
