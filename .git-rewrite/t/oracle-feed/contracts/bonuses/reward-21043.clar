(define-public (reward-21043 (recipient principal))
  (ok (as-contract (stx-transfer? u21043 tx-sender recipient))))
