(define-public (reward-21623 (recipient principal))
  (ok (as-contract (stx-transfer? u21623 tx-sender recipient))))
