(define-public (reward-21498 (recipient principal))
  (ok (as-contract (stx-transfer? u21498 tx-sender recipient))))
