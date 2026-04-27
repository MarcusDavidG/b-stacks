(define-public (reward-20968 (recipient principal))
  (ok (as-contract (stx-transfer? u20968 tx-sender recipient))))
