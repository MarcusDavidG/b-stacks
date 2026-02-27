(define-public (reward-20999 (recipient principal))
  (ok (as-contract (stx-transfer? u20999 tx-sender recipient))))
