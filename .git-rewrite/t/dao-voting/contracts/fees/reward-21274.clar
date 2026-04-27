(define-public (reward-21274 (recipient principal))
  (ok (as-contract (stx-transfer? u21274 tx-sender recipient))))
