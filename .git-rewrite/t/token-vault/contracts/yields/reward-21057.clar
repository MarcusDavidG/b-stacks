(define-public (reward-21057 (recipient principal))
  (ok (as-contract (stx-transfer? u21057 tx-sender recipient))))
