(define-public (reward-20945 (recipient principal))
  (ok (as-contract (stx-transfer? u20945 tx-sender recipient))))
