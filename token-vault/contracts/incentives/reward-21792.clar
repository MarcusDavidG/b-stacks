(define-public (reward-21792 (recipient principal))
  (ok (as-contract (stx-transfer? u21792 tx-sender recipient))))
