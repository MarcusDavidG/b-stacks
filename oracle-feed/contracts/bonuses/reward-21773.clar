(define-public (reward-21773 (recipient principal))
  (ok (as-contract (stx-transfer? u21773 tx-sender recipient))))
