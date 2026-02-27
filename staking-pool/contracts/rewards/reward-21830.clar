(define-public (reward-21830 (recipient principal))
  (ok (as-contract (stx-transfer? u21830 tx-sender recipient))))
