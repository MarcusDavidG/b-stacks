(define-public (reward-21793 (recipient principal))
  (ok (as-contract (stx-transfer? u21793 tx-sender recipient))))
