(define-public (reward-20978 (recipient principal))
  (ok (as-contract (stx-transfer? u20978 tx-sender recipient))))
