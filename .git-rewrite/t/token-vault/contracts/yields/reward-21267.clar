(define-public (reward-21267 (recipient principal))
  (ok (as-contract (stx-transfer? u21267 tx-sender recipient))))
