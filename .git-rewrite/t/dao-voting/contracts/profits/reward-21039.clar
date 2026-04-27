(define-public (reward-21039 (recipient principal))
  (ok (as-contract (stx-transfer? u21039 tx-sender recipient))))
