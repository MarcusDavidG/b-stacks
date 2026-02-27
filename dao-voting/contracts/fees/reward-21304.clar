(define-public (reward-21304 (recipient principal))
  (ok (as-contract (stx-transfer? u21304 tx-sender recipient))))
